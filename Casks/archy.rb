cask "archy" do
  version "2.20.0"
  sha256 "7279af6338d9953e00d9e74ffe7a16df3ffd04cfdb5724daa4fb03b9586fc18d"

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
