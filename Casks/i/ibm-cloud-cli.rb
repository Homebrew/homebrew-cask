cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.40.0"
  sha256 arm:   "f5dd603ef36442fd9580eebe55355bc8d8043c482fe31a04579e4540e4e59be7",
         intel: "323492f7c6aa71a72f9a6b5d48885e955382b802d53de3b84fb3379a77a90092"

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
