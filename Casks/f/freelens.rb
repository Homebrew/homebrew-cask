cask "freelens" do
  arch arm: "arm64", intel: "amd64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.1.0"
  sha256 arm:          "d4e0155c429e828edd5c0fdd111e0dfd21810e638d2baac951a677f7d89e6300",
         intel:        "f283b3dea60206e0bc60b1941091aa63635a909d424e5fc89c2c115e2c3791b3",
         arm64_linux:  "cab60b48a0d1fd2af238b19f017cc02e2fce7bfd7833f6f874b590c6fb09f606",
         x86_64_linux: "0f7c5a240edee664d25f1c18283a7a67ad98dcf33f4d03cc319bf581bfed1bd2"

  on_macos do
    depends_on macos: :ventura

    app "Freelens.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.freelens.freelens.sfl*",
      "~/Library/Application Support/Freelens",
      "~/Library/Logs/Freelens",
      "~/Library/Preferences/app.freelens.Freelens.plist",
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
