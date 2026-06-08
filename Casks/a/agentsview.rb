cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.32.1"
  sha256 arm:          "711fa89bee1a2fe2db90b24c7b461694cc9e1838931a271d754c35bed19e5dff",
         x86_64:       "0ed4640135235bde419052058135db08268b4e105be736db2fe9e954716ddf77",
         x86_64_linux: "30126e1db09111f491bf2675d27ac4602902f2cbfd523e78c94fc277975053ab",
         arm64_linux:  "46d7fdc5116f63326be35fede359187fe8afdd546dd98c03c0d224219f118007"

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
