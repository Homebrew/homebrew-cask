cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "1.4.1-R4380.1"
  sha256 arm:          "af15ef05a7b78f798d6d0ada79f90bc5c06b6b56e8dfdd2a332b1243268c161d",
         intel:        "bfce9acd4f2d162421e79ba0a8e2c682107bcafc93cf6d8c28cd361a1c1adbc0",
         arm64_linux:  "98e87ca384f9b6bd54b493eaf4e83bc7f2638ffdc86d1941e95b6e3385cf0b92",
         x86_64_linux: "0179bbe00a3a36ef60951131821e137d4b9a59ae4d5b8dc3a798221cc507cfa2"

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
