cask "ibm-cloud-cli" do
  version "2.12.1"
  sha256 "4393a0735ad36b3da9ef8f5a584197b21d46ec560f7207b9bac8ea7043a0f81c"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
  end

  depends_on cask: "docker"
  depends_on formula: "helm"
  depends_on formula: "kubernetes-cli"

  pkg "IBM_Cloud_CLI_#{version}.pkg"

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
