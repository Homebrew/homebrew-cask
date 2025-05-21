cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.34.1"
  sha256 arm:   "904d3dc1987ff9207c3d0593a6b4fd7d09acffacf9d2633cbf4920fd3c7ab28f",
         intel: "5eea38c654f68455c9430e892471f1300f1a5998e42f2b71355f0aa7e9a9c6da"

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
