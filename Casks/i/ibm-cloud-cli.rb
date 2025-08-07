cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.35.1"
  sha256 arm:   "4b7c15fa151dc8212041ab32e05f8f7dbab8d048a5ea23366d3a79891a1f5bef",
         intel: "f602c7ca03b9f78ad6575d3714057cbef832124e2e85b0e526ba02d86a386a54"

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
