cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.30.0"
  sha256 arm:          "478c335c0299debcbab42fd989b3bc07001dc8ef0579c7a85357960552d04087",
         x86_64:       "23bc91c853b535b2a7dc71a1824633a18053b9ba2937632dc53abae4c3f866c3",
         x86_64_linux: "70189d2f6d7e5931e047b4b67169d9a3a8d7402cfe81662890ff9b0fb0398da5",
         arm64_linux:  "acf82a521250b2e0874362570540628c198b268eb16fde8e993b1a1f81e0104a"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/wesm/agentsview/releases/download/v#{version}/AgentsView_#{version}_#{arch}#{url_end}",
      verified: "github.com/wesm/agentsview/"
  name "AgentsView"
  desc "Browse, search and analyse your past AI coding sessions"
  homepage "https://www.agentsview.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    app "AgentsView.app"
    binary "#{appdir}/AgentsView.app/Contents/MacOS/agentsview"

    depends_on macos: :big_sur

    zap trash: [
      "~/.agentsview",
      "~/Library/Caches/io.agentsview.desktop",
      "~/Library/WebKit/io.agentsview.desktop",
    ]
  end

  on_linux do
    app_image "AgentsView_#{version}_#{arch}.AppImage", target: "AgentsView.AppImage"
  end
end
