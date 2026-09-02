cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.0.2-R2040.1"
  sha256 arm:          "41d37e4960def2fe1176a942908f6ccaa04f602dbb6657c511c794abdea14cc4",
         intel:        "49a2d80e8f99a35f35127be97d2701a46be3a762e639ff272ca86431cbacce1f",
         arm64_linux:  "b0daabd60a28db30c530b01dbcf4185600f3bab286192c57ab30f6aa282d20f4",
         x86_64_linux: "6f24623d6d1a193a8ab8d610c3df11c38cc8bb54aa39b6532fb2a7a29d85d27b"

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
