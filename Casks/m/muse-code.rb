cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.0.1-R2006.1"
  sha256 arm:          "b9c7f9badb6b2af1b362d30202b366e7bdc13b3c4048e9002caa236cc56c54a4",
         intel:        "87540826ce6d7ce18b16fcbb08f41ec75fb91873667896e93c6afd2ce32662a7",
         arm64_linux:  "09619b16c0bfadda237c7a10b5c97d9f9f0f1ef7c88ea782ddaea31ebd0d9f24",
         x86_64_linux: "036b1ba8582ba17d3dadfc7fd19a0255fa2c8ad230a051f79cb5746214e93f28"

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
