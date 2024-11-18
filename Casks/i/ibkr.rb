cask "ibkr" do
  arch arm: "-arm", intel: "x-x64"

  version "0.11.0i"
  sha256 :no_check

  url "https://download2.interactivebrokers.com/installers/ntws/latest-standalone/ntws-latest-standalone-macos#{arch}.dmg"
  name "IBKR Desktop"
  desc "Trading software"
  homepage "https://www.interactivebrokers.com/"

  livecheck do
    url "https://download2.interactivebrokers.com/installers/ntws/latest-standalone/version.json"
    regex(/callback\((.+)\)/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1])
      json["buildVersion"]
    end
  end

  installer script: {
    executable: "#{staged_path}/IBKR Desktop Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall signal: [
              ["TERM", "com.install4j.5557-0173-2810-0000"],
              ["TERM", "com.install4j.5557-0173-2810-0000.22"],
              ["TERM", "IBKR Desktop.app"],
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
    "~/Library/HTTPStorages/com.install4j.5557-0173-2810-0000.6858",
    "~/Library/Preferences/com.install4j.5557-0173-2810-0000.22.plist",
    "~/Library/Preferences/com.install4j.5557-0173-2810-0000.uninstaller.plist",
    "~/Library/Saved Application State/com.install4j.5557-0173-2810-0000.22.savedState",
  ]
end
