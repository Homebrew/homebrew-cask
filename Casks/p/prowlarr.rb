cask "prowlarr" do
  version "1.9.4.4039"
  sha256 "4ca417871b30c726cd5ad988114f5a6a52c7a5bae4260cce78c5e31f40318837"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-x64.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"

  caveats do
    requires_rosetta
    <<~EOS
      The Apple Silicon build for this cask is not functional so the Intel build is
      required instead.
        https://github.com/orgs/Homebrew/discussions/3088#discussioncomment-7623916
    EOS
  end
end
