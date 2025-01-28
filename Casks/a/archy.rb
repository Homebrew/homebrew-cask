cask "archy" do
  version "2.33.1"
  os macos: "macos", linux: "linux"

  sha256 x86_64:       "3bc1876ffb16e4f369e5f002d368dcf4f938449a70e6e010a565d00c223b0eaf",
         x86_64_linux: "42c00a0acc938ca5f21c9470bab2f3e8966a4a1c1517170aeefddf2c2ecfd479"

  url "https://sdk-cdn.mypurecloud.com/archy/#{version}/archy-#{os}.zip",
      verified: "sdk-cdn.mypurecloud.com/archy/"
  name "Archy"
  desc "YAML processor"
  homepage "https://developer.genesys.cloud/devapps/archy/"

  livecheck do
    url "https://sdk-cdn.mypurecloud.com/archy/versions.json"
    strategy :json do |json|
      json.map { |item| item["version"] }
    end
  end

  binary "archyBin/archy-#{os}-#{version}", target: "archy"

  zap trash: "~/.archy_config"

  caveats do
    requires_rosetta
  end
end
