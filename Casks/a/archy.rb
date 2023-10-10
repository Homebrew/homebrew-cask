cask "archy" do
  version "2.23.1"
  sha256 "afc088d63370a68e1853da378c156265a88c2f3ec515d667a660348e7d145f7c"

  url "https://sdk-cdn.mypurecloud.com/archy/#{version}/archy-macos.zip",
      verified: "sdk-cdn.mypurecloud.com/archy/"
  name "Archy"
  desc "YAML processor"
  homepage "https://developer.genesys.cloud/devapps/archy/"

  livecheck do
    url "https://sdk-cdn.mypurecloud.com/archy/versions.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  binary "archyBin/archy-macos-#{version}", target: "archy"

  zap trash: "~/.archy_config"
end
