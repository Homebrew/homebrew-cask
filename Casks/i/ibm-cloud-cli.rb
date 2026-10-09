cask "ibm-cloud-cli" do
  arch arm: "_arm64", intel: on_system_conditional(linux: "_amd64")
  os macos: "_macos"
  binaries = on_system_conditional macos: "/binaries"
  dir_name = on_system_conditional macos: "IBM_Cloud_CLI", linux: "Bluemix_CLI"
  url_end = on_system_conditional macos: "tgz", linux: "tar.gz"

  version "2.48.0"
  sha256 arm:          "f6a7769233c7e90232e1690bf1701f5cc8931aa95e663e0aef56cc26eb9898dd",
         intel:        "56df3660acae9f11ad4b9626c711388327efbdeb845e672670640b63a48c53e8",
         arm64_linux:  "d2ea7beaddf00f432219f7f55721faaa2fd97e1110909d6a27bd430f638949a9",
         x86_64_linux: "a16e52960a573fdec94d0b91ab261129834043bc5cab4c5fe754ea73d69d67a9"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli-dn/#{version}#{binaries}/IBM_Cloud_CLI_#{version}#{os}#{arch}.#{url_end}"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
  end

  installer script: {
    executable: "#{dir_name}/install",
    sudo:       true,
  }

  uninstall script: {
    executable: "/usr/local/ibmcloud/uninstall",
    sudo:       true,
  }

  zap trash: "~/.bluemix"

  caveats do
    files_in_usr_local
  end
end
