cask "lilypond" do
  version "2.22.0-1"
  sha256 "154c21991c534802dbdae8b101863ec696427fbf26e0670c496cf0888dbab374"

  url "https://lilypond.org/downloads/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  name "LilyPond"
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
