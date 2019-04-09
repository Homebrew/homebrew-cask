cask 'curio' do
  version '12022.5'
  sha256 'b79ca4b7e0c9aaffafc78e8b2768ae679af741da428a449ae499470fb44b9037'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio12MarkdownAppcast.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :sierra'

  app 'Curio.app'
end
