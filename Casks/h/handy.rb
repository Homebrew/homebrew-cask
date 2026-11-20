cask "handy" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.10.1"
  sha256 arm:          "7cdef5de7d1bfcea70813320b897540cbead2190f5280db6d9760a59e5995463",
         intel:        "5fa09eb596354033bace575ba8811a92929af4d59890932f482cdbac12a5b586",
         arm64_linux:  "8dc401ea81eba6b1fc9e97a6bf1ac547101cc0ae626169635cdd9127d7d13081",
         x86_64_linux: "f89e267b89983d069a9cbfa74b5e93aa3fa04455702b84fb55a5e6792048395f"

  on_macos do
    depends_on macos: :ventura

    app "Handy.app"

    zap trash: [
      "~/Library/Application Support/com.pais.handy",
      "~/Library/Caches/com.pais.handy",
      "~/Library/LaunchAgents/Handy.plist",
      "~/Library/Logs/com.pais.handy",
      "~/Library/WebKit/com.pais.handy",
    ]
  end
  on_linux do
    app_image "Handy_#{version}_#{arch}.AppImage", target: "Handy.AppImage"

    zap trash: [
      "~/.cache/com.pais.handy",
      "~/.config/com.pais.handy",
      "~/.local/share/com.pais.handy",
    ]
  end

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.#{os}"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
end
