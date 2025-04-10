cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.33.1"
  sha256 arm:   "dab3c762c1c27bb5ebb8710146bf720ae1fb7e3efea069470b332439ed668553",
         intel: "e1ea2a89de9a1dc816dd1a76c004accf9560278584d9809fd82ff50b5fc2fbe9"

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
