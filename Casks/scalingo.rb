cask 'scalingo' do
  version '1.5.0'
  sha256 '4f7b7cdc8227ccc18d0dc14841df83611f8b5abb2e8d3a74f57b7a0a0903199c'

  # github.com/Scalingo was verified as official when first introduced to the cask
  url "https://github.com/Scalingo/cli/releases/download/#{version}/scalingo_#{version}_darwin_amd64.zip"
  name 'scalingo'
  homepage 'http://cli.scalingo.com/'

  binary "scalingo_#{version}_darwin_amd64/scalingo"
end
