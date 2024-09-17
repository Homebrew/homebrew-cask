cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.28.0"
  sha256 arm:   "b42c8bdc1c6b8edf937acb549e7743cbd855dc3f4c3b7d735db8fa939aa660bc",
         intel: "6bf9ceddf8897857a1f959a330818fd8bd41b23ebbee166b5b86ae0126b81d34"

  url "https://download.clis.cloud.ibm.com/ibm-cloud-cli/#{version}/IBM_Cloud_CLI_#{version}#{arch}.pkg"
  name "IBM Cloud CLI"
  desc "Command-line API client"
  homepage "https://cloud.ibm.com/docs/cli/index.html"

  # Upstream publishes file links in the description of GitHub releases.
  livecheck do
    url "https://github.com/IBM-Cloud/ibm-cloud-cli-release"
    regex(/IBM[._-]Cloud[._-]CLI[._-]v?(\d+(?:\.\d+)+)#{arch}\.(?:dmg|pkg)/i)
    strategy :github_latest do |json, regex|
      match = json["body"]&.match(regex)
      next if match.blank?

      match[1]
    end
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
