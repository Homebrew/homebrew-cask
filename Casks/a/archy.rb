cask "archy" do
  version "2.22.0"
  sha256 "c3273657d311ada3a3caec691dd2e78333e18926cecf16588fce4507ecf2bb3d"

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
