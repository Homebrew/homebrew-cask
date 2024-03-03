cask "ibkr" do
  arch arm: "arm", intel: "x64"
  os = on_arch_conditional arm: "macos", intel: "macosx"

  version "0.07.1g"
  sha256 :no_check

  url "https://download2.interactivebrokers.com/installers/ntws/latest-standalone/ntws-latest-standalone-#{os}-#{arch}.dmg"
  name "IBKR Desktop"
  desc "Trading software"
  homepage "https://www.interactivebrokers.com/"

  livecheck do
    url "https://download2.interactivebrokers.com/installers/ntws/latest-standalone/version.json"
    regex(/"buildVersion"\s*:\s*"(\d+(?:\.\d+)+[a-z]*)"/i)
  end

  installer script: {
    executable: "#{staged_path}/IBKR Desktop Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall quit:   "com.install4j.5557-0173-2810-0000",
            script: {
              executable: "/Applications/IBKR Desktop/IBKR Desktop Uninstaller.app/Contents/MacOS/JavaApplicationStub",
              args:       ["-q"],
            }

  zap trash: [
    "/Applications/IBKR Desktop",
    "~/Jts",
    "~/Library/Application Support/IBKR Desktop",
  ]
end
