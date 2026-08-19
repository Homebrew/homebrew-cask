cask "reality" do
  os macos: "aarch64.dmg", linux: "amd64.AppImage"

  version "4.1.0"

  on_macos do
    sha256 "b8afaaed4e66c7566f01d77dba7123eec2348281b3ecf1d8210805d31a4e4bd1"

    depends_on arch: :arm64

    app "Reality Launcher.app"
  end
  on_linux do
    sha256 "84738951aaa43dc138f8880d16583b49c6fc188a82a36fc4cb1417aecf92a8e4"

    depends_on arch: :x86_64

    app_image "Reality Launcher_#{version}_amd64.AppImage", target: "Reality Launcher.AppImage"
  end

  url "https://cdn.reality.catlabdesign.space/client/#{version}/Reality%20Launcher_#{version}_#{os}"
  name "Reality Launcher"
  desc "Minecraft launcher for the Reality community server"
  homepage "https://github.com/catlab-design/realitylauncher-client"

  livecheck do
    url "https://api.reality.catlabdesign.space/launcher/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
end
