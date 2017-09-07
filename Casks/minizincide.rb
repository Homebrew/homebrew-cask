cask 'minizincide' do
  version '2.1.5'
  sha256 'fd427fda74ba0972a9706a09c52fe8bbd19947e54c7c7e52e4c809122acb76b8'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: '209b6573001b7200fbf592591124c31a8d77baa0076410a1af445b63e8b504c3'
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
