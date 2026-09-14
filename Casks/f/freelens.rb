cask "freelens" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.10.3"
  sha256 arm:          "ae33e11d5db858da1f64ae2c4f7ca3835786780bcb2af02e55fe756f08900419",
         intel:        "d9b462114b9587ca8daaf1ce62529de7d3ec65e42f39628edfc10ecbd69c3175",
         arm64_linux:  "d9a030f7461f4cf0e489e863d738aeac17882c4b843a66c979457677b05b9a8e",
         x86_64_linux: "5be46890eb13e167559b862b9a6f246eeec0a72761c0b3e91a646329323581e9"

  on_macos do
    depends_on macos: :monterey

    app "Freelens.app"

    zap trash: [
      "~/Library/Application Support/Freelens",
      "~/Library/Logs/Freelens",
    ]
  end
  on_linux do
    app_image "Freelens-#{version}-linux-#{arch}.AppImage", target: "Freelens.AppImage"

    zap trash: "~/.config/Freelens"
  end

  url "https://github.com/freelensapp/freelens/releases/download/v#{version}/Freelens-#{version}-#{os}-#{arch}.#{url_end}"
  name "Freelens"
  desc "Kubernetes IDE"
  homepage "https://freelens.app/"

  conflicts_with cask: "freelens@nightly"
end
