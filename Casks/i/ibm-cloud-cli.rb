cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.37.0"
  sha256 arm:   "86e1683134fcacbbf9a5ffc58631665244eb5ddfdc4f58df677f0d31238134a3",
         intel: "c594e6dd0e095bd56999db10a5cc1c07fd67d0a4f0ef1a4cf68ff72efe055d0a"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}#{arch}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
  end

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
