cask "ibkr" do
  arch arm: "-arm", intel: "x-x64"

  version "0.09.0v"
  sha256 :no_check

  url "https://download2.interactivebrokers.com/installers/ntws/latest-standalone/ntws-latest-standalone-macos#{arch}.dmg"
  name "IBKR Desktop"
  desc "Trading software"
  homepage "https://www.interactivebrokers.com/"

  livecheck do
    url "https://download2.interactivebrokers.com/installers/ntws/latest-standalone/version.json"
    regex(/(\d+(?:\.\d+)+[a-z]*)/i)
  end

  installer script: {
    executable: "#{staged_path}/IBKR Desktop Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall quit:   [
              "com.install4j.5557-0173-2810-0000",
              "com.install4j.5557-0173-2810-0000.22",
              "IBKR Desktop.app",
            ],
            script: {
              executable: "/Applications/IBKR Desktop/IBKR Desktop Uninstaller.app/Contents/MacOS/JavaApplicationStub",
              args:       ["-q"],
            }

  zap trash: [
    "/Applications/IBKR Desktop",
    "~/Applications/IBKR Desktop",
    "~/Desktop/IBKR Desktop",
    "~/Jts",
    "~/Library/Application Support/IBKR Desktop",
  ]
end
