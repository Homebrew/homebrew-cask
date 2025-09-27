cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.37.1"
  sha256 arm:   "d834636823dce0564d543da5b93a4b447342d1f2a3e948139cd1272610c67b69",
         intel: "b31c964b4884d7c9ffc30cc84cf7f11eb50d8ab108c5be35670e2af29375a021"

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
