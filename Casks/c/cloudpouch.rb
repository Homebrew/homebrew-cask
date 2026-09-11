cask "cloudpouch" do
  url_end = on_system_conditional macos: "-universal-mac.zip", linux: ".AppImage"

  version "1.49.0"
  sha256 arm:          "407cbb258fedcc170c98175e6e83e23f9674855c9dbf59eebb6378140b713948",
         intel:        "407cbb258fedcc170c98175e6e83e23f9674855c9dbf59eebb6378140b713948",
         x86_64_linux: "e4aafc8a70678c515e5995b12bd626a55433a658aafc12e7f59608583df423aa"

  on_macos do
    depends_on macos: :monterey

    app "CloudPouch.app"

    zap trash: [
      "~/.cloudpouch-aws-sso-client-credentials",
      "~/Library/Application Support/CloudPouch",
      "~/Library/Logs/CloudPouch",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "CloudPouch-#{version}.AppImage", target: "CloudPouch.AppImage"
  end

  url "https://github.com/CloudPouch/CloudPouch.dev/releases/download/v#{version}/CloudPouch-#{version}#{url_end}"
  name "CloudPouch"
  desc "AWS cloud FinOps tool"
  homepage "https://cloudpouch.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
