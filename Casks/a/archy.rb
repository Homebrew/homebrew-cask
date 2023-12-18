cask "archy" do
  version "2.25.0"
  sha256 "f630d652109f768636d6ef4aaaf099166f00de3c8ee4b7e98e4d2090b4dc0ec8"

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
