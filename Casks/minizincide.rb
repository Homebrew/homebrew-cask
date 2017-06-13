cask 'minizincide' do
  version '2.1.5'
  sha256 'fd427fda74ba0972a9706a09c52fe8bbd19947e54c7c7e52e4c809122acb76b8'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: 'c76cd4c6464934c9445128ba2a04b5c07624fe6113e2823401bfb5fcfc542d83'
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
