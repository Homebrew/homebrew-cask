cask "trader-workstation" do
  arch arm: "-arm", intel: "x-x64"

  version "10.30.1j"
  sha256 :no_check

  url "https://download2.interactivebrokers.com/installers/tws/latest/tws-latest-macos#{arch}.dmg"
  name "Trader Workstation"
  desc "Trading software"
  homepage "https://www.interactivebrokers.com/"

  livecheck do
    url "https://download2.interactivebrokers.com/installers/tws/latest/version.json"
    regex(/(\d+(?:\.\d+)+[a-z]*)/i)
  end

  installer script: {
    executable: "#{staged_path}/Trader Workstation Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall_preflight do
    ohai "Stopping all running instances of Trader Workstation prior to uninstall"
    system_command "/usr/bin/pkill", args: ["-f", "/Applications/Trader Workstation/Trader Workstation.app"]
  rescue RuntimeError
    ohai "No running instances of Trader Workstation found"
  end

  uninstall quit:   "com.install4j.5889-6375-8446-2021",
            script: {
              executable: "/Applications/Trader Workstation/Trader Workstation Uninstaller.app/Contents/MacOS/JavaApplicationStub",
              args:       ["-q"],
            }

  zap trash: [
    "/Applications/Trader Workstation",
    "~/Applications/Trader Workstation",
    "~/Jts",
    "~/Library/Application Support/Trader Workstation",
  ]
end
