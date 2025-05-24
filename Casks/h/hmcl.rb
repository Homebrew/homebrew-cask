cask "hmcl" do
  version "3.6.12"
  sha256 "f237b5de413e19b334a2491221e5e42ca190a7b931a162280675c4295517038b"

  url "https://github.com/HMCL-dev/HMCL/releases/download/release-#{version}/HMCL-#{version}.sh",
      verified: "github.com/HMCL-dev/HMCL/"
  name "Hello Minecraft! Launcher"
  desc "Minecraft Launcher which is multi-functional, cross-platform and popular"
  homepage "https://hmcl.huangyuhui.net/"

  livecheck do
    url :url
    regex(/^release-(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  container type: :naked

  binary "HMCL-#{version}.sh", target: "hmcl"

  zap trash: "~/Library/Application Support/hmcl"

  caveats do
    depends_on_java "8+"
  end
end
