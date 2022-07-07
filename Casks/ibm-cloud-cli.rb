cask "ibm-cloud-cli" do
  version "2.9.0"
  sha256 "ed61c1c90d8b4f14703486f0378dc47806e7ed69b6b7b085a9d65e249b1d926d"

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
