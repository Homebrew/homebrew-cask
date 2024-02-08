cask "glance" do
  version "1.2.0"
  sha256 "8584901c292a2a7ce084ee25b0b3e020d143e193ab198b69831b398cdc164c06"

  url "https://github.com/samuelmeuli/glance/releases/download/v#{version}/Glance.dmg"
  name "Glance"
  desc "Utility to provide quick look previews for files that aren't natively supported"
  homepage "https://github.com/samuelmeuli/glance"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :catalina"

  app "Glance.app"

  zap trash: [
    "~/Library/Application Scripts/com.samuelmeuli.Glance",
    "~/Library/Application Scripts/com.samuelmeuli.Glance.QLPlugin",
    "~/Library/Containers/com.samuelmeuli.Glance",
    "~/Library/Containers/com.samuelmeuli.Glance.QLPlugin",
    "~/Library/Group Containers/group.com.samuelmeuli.glance",
  ]

  caveats do
    <<~EOS
      You must start #{appdir}/Glance.app once manually to setup the QuickLook plugin.
    EOS
  end
end
