cask 'clion' do
  version '2016.3.3'
  sha256 '3c53f4844317da8fcd54058603a7998d774b0563cde5dba06f22e2882797db60'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release',
          checkpoint: 'fff2984b9c3c5e521e5b2609abbfed354d348c36419693024abae55c325c5a32'
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion/'

  auto_updates true
  conflicts_with cask: 'clion-eap'

  app 'CLion.app'

  zap delete: [
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ]
end
