cask "lilypond" do
  version "2.22.1-1"
  sha256 "efdc9ecd5da2e13804258ad739063fad3b0f587aac9fe0a0f89314e784474f58"

  url "https://lilypond.org/downloads/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  name "LilyPond"
  desc "Music engraving program"
  homepage "https://lilypond.org/"

  livecheck do
    url "https://lilypond.org/macos-x.html"
    strategy :page_match
    regex(%r{href=.*?/lilypond-(\d+(?:\.\d+)*-\d+)\.darwin-x86\.tar\.bz2}i)
  end

  depends_on macos: "<= :mojave"

  app "LilyPond.app"

  binaries = %w[
    abc2ly
    convert-ly
    lilypond
    lilypond-book
    musicxml2ly
  ]

  binaries.each do |shimscript|
    binary "#{staged_path}/#{shimscript}.wrapper.sh", target: shimscript
  end

  preflight do
    binaries.each do |shimscript|
      # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
      IO.write "#{staged_path}/#{shimscript}.wrapper.sh", <<~EOS
        #!/bin/sh
        exec '#{appdir}/LilyPond.app/Contents/Resources/bin/#{shimscript}' "$@"
      EOS
    end
  end

  zap trash: [
    "~/Library/Preferences/org.lilypond.lilypond.plist",
    "~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist",
  ]
end
