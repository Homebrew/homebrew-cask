cask "cloudpouch" do
  url_end = on_system_conditional macos: "-universal-mac.zip", linux: ".AppImage"

  version "2.0.0"
  sha256 arm:          "20a03db8f5c4ebb6e8b8df6ab184b465f235413ae13d4c33b27c5adf4485d9a6",
         intel:        "20a03db8f5c4ebb6e8b8df6ab184b465f235413ae13d4c33b27c5adf4485d9a6",
         x86_64_linux: "ddf9fc64d75cbedde9941dc1baab6aafd2366656716489acb1ad05e928b3ddde"

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
