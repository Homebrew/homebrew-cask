cask "subsync" do
  version "0.17"
  sha256 "8d81f4d8da99b5f6b023da3fd100fccadb0c2b07143e495eb57bd22bfa5a78bd"

  url "https://github.com/sc0ty/subsync/releases/download/#{version}/subsync-#{version}.0-mac-x86_64.dmg",
      verified: "github.com/sc0ty/subsync/"
  name "subsync"
  desc "Subtitle speech synchronizer"
  homepage "https://subsync.online/"

  app "subsync.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/subsync.wrapper.sh"
  binary shimscript, target: "subsync"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/subsync.app/Contents/MacOS/subsync' --cli "$@"
    EOS
  end

  zap trash: "~/Library/Preferences/subsync/"
end
