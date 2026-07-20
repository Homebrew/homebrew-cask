cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.45.0"
  sha256 arm:   "5d732766279c7ce4a330cbdd7d032b9e386298f20479c65632740840d2a2fc9e",
         intel: "a7368f1ec6b4eabefda6ea5a8ea0968d1bde03d281f30546cb60054d73e106e8"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}#{arch}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
  end

  depends_on :macos

  pkg "IBM_Cloud_CLI_#{version}#{arch}.pkg"

  uninstall pkgutil: "com.ibm.cloud.cli",
            delete:  [
              "/usr/local/bin/bluemix",
              "/usr/local/bin/bx",
              "/usr/local/ibmcloud",
            ]

  zap trash: "~/.bluemix"

  caveats do
    files_in_usr_local
  end
end
