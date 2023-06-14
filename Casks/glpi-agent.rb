cask "glpi-agent" do
  arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.4"
  sha256 arm:   "4d92fafe04f087d7ed11644b96c018c63fe6e2ddc843f02ba9ac299a9e4b97a1",
         intel: "b328b43cc5b663fca3ecde77ef06d7af5d227822fa77524b3da9a6b705c7f119"

  url "https://github.com/glpi-project/glpi-agent/releases/download/#{version}/GLPI-Agent-#{version}_#{arch}.pkg"
  name "glpi-agent"
  desc "Inventory Agent for GLPI"
  homepage "https://github.com/glpi-project/glpi-agent"

  pkg "GLPI-Agent-#{version}_#{arch}.pkg"

  uninstall script:  {
              executable:   "/Applications/GLPI-Agent/uninstaller.sh",
              must_succeed: false,
              sudo:         true,
            },
            pkgutil: "org.glpi-project.glpi-agent",
            delete:  "/Applications/GLPI-Agent"

  caveats "After installing it, you'll have to configure the agent to your needs by creating a dedicated .cfg file under the /Applications/GLPI-Agent/etc/conf.d folder. Documentation : https://glpi-agent.readthedocs.io/en/latest/installation/index.html#macos"
end
