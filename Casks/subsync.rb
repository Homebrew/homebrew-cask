cask "subsync" do
  version "0.16.0"
  sha256 "0483b43faf4a1645d0763bba7b3a229e43d0ef870be18e43f3bc76f60cfb9fc5"

  # github.com/sc0ty/subsync was verified as official when first introduced to the cask
  url "https://github.com/sc0ty/subsync/releases/download/#{version.major_minor}/subsync-#{version}-mac-x86_64.dmg"
  appcast "https://github.com/sc0ty/subsync/releases.atom"
  name "subsync"
  desc "Subtitle speech synchronizer"
  homepage "https://subsync.online/"

  app "subsync.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/subsync.wrapper.sh"
  binary shimscript, target: "subsync"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/subsync.app/Contents/MacOS/subsync' --cli "$@"
    EOS
  end

  zap trash: "~/Library/Preferences/subsync/"
end
