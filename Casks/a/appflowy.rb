cask "appflowy" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  name_start = on_system_conditional macos: "Appflowy", linux: "AppFlowy"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "0.14.1"

  on_macos do
    sha256 arm:   "a7ce5180eb2086d4dfd3e3fa8cf89fb4508a71e5a48bf5ff8615e7c4ce669101",
           intel: "536f2edb4f304d775df8d4c53fd3d210ab8b447b038f4d3035a23802cc3fdcf5"

    depends_on macos: :monterey

    app "AppFlowy-#{arch}.app", target: "AppFlowy.app"

    zap trash: [
      "~/Library/Application Scripts/com.appflowy.macos",
      "~/Library/Containers/com.appflowy.macos",
    ]
  end
  on_linux do
    sha256 "b2581ce65dc9b5ac0eec556e5c4491f3a62060c09a2912f16db08584e98bc1fd"

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
