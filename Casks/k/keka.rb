cask "keka" do
  version "1.6.7"
  sha256 "0fa0995fc3e58ba3e438ba53aba03636eb226c64002757d21250934116e19f7e"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg",
      verified: "github.com/aonez/Keka/"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/"

  livecheck do
    url "https://u.keka.io/keka.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "keka@beta"
  depends_on :macos

  app "Keka.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "keka.wrapper.sh",
                  target:  "keka",
                  content: <<~EOS
                    #!/bin/bash
                    exec '#{appdir}/Keka.app/Contents/MacOS/Keka' '--cli' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Scripts/*.group.com.aone.keka",
    "~/Library/Application Scripts/com.aone.keka",
    "~/Library/Application Scripts/com.aone.keka.KekaFinderIntegration",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aone.keka.sfl*",
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Containers/com.aone.keka",
    "~/Library/Containers/com.aone.keka.KekaFinderIntegration",
    "~/Library/Group Containers/*.group.com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
