cask "cricut-design-space" do
  version "5.8.1808.282223"
  sha256 "048483d69974d24bd99880bcc3c6cf51643c8a53728351cdf31ec476c625f38b"

  url "https://imgservice.cricut.com/design-public-mirror1/software/Plugin/CricutDesignSpace-#{version}.zip"
  name "Cricut Design Space Plugin"
  homepage "https://cricut.com/"

  installer script: {
    executable: "#{staged_path}/CricutDesignSpace-#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--unattendedmodeui", "none"],
  }

  uninstall trash:      "/Applications/Cricut Design Space.app",
            quit:       [
              "com.ProvoCraft.CricutBridge4",
              "com.ProvoCraft.CricutLauncher4",
            ],
            login_item: "CricutLauncher4"
end
