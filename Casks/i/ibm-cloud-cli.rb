cask "ibm-cloud-cli" do
  arch arm: "_arm64"

  version "2.29.0"
  sha256 arm:   "9ab36ec4be956cab4ef46b74cfc74d47c1dbad039d68367c1b13d26cb7613fe2",
         intel: "0d1e70c0ea737593208c530049e6dd8d6423080432abe7f16057aa17df8c4826"

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
