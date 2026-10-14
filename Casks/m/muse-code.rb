cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.8-R6256.1"
  sha256 arm:          "5721763b4723f961709cd28f69aa049763965b46c4d4d70f883a0a90e5ddf39c",
         intel:        "94ea8fd1c73664c22e5c6157d8706945b667b11bd1c7c51691811e79f17dfcf1",
         arm64_linux:  "592aabe306186794e05d9329ccef7d49116abf0a8bcbc1e07703d22ef1b34f3a",
         x86_64_linux: "416eaa520e6bf98c7d67f8d2772a2464d41839c1cb7a75d299845400f484fd4b"

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
