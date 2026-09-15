cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  name_start = on_system_conditional macos: "Appflowy", linux: "AppFlowy"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "0.14.3"
  sha256 arm:          "0b2bfccf9ffba04ea1fa265f218ca0070e98be6a221afd5e3d082c1c9ca0bac2",
         intel:        "c9dccb517cdae026168ebb0c3df5721ec5522f38333e111f4fbbbe2f92b23731",
         x86_64_linux: "124d77c6188cc77682630a946c94af3b3b3910a84c2e7091e9bd0d7c4517f2e2"

  on_macos do
    depends_on macos: :monterey

    app "AppFlowy-#{arch}.app", target: "AppFlowy.app"

    zap trash: [
      "~/Library/Application Scripts/com.appflowy.macos",
      "~/Library/Containers/com.appflowy.macos",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "AppFlowy-#{version}-linux-#{arch}.AppImage", target: "AppFlowy.AppImage"
  end

  url "https://github.com/AppFlowy-IO/AppFlowy/releases/download/#{version}/#{name_start}-#{version}-#{os}-#{arch}.#{url_end}"
  name "AppFlowy"
  desc "Open-source project and knowledge management tool"
  homepage "https://www.appflowy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
