cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.41.0"
  sha256 arm:   "274ce6a99147a5977ef0af74b041fdedf1e056cbc15695eb65e767dbc0bad973",
         intel: "4f13bb6504b7f12d8e13b0f578701718a3db6c125c322410ae6ddf30c13441c9"

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
