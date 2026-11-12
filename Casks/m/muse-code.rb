cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.18-R8587.1"
  sha256 arm:          "3f6da0d865ceb97dfe3002372ff1551b6a187dccc740866456a546510b1412e7",
         intel:        "3a22c0f44b3d5df2b6f098a31d7d8c78ee71f3f672869f71fc3b76e1fe470a0e",
         arm64_linux:  "0083e0feb47c052393b09de49c2d3d86ac5fbfe14e91108c0a1b85b190673928",
         x86_64_linux: "57732db89e25a58196c923b3790aa3e2a85b8d1ad5094492384792260e65b538"

  on_macos do
    depends_on macos: :monterey
  end

  url "https://lookaside.facebook.com/lookaside/muse/download/?channel=muse&version=#{version}&file=muse-#{arch}-#{os}"
  name "Muse Code"
  desc "Interactive terminal coding agent"
  homepage "https://dev.meta.ai/"

  livecheck do
    url "https://api.meta.ai/muse-code/channels/muse-stable"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "muse-#{arch}-#{os}", target: "muse"

  zap trash: [
    "~/.config/muse",
    "~/.local/share/muse",
  ]
end
