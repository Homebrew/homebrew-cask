cask 'qlab' do
  version '3.1.23'
  sha256 'bcea4d310f18895fbd94e902833cd2cbdc887d47f063214be568f8ca19d48120'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}.php",
          checkpoint: 'dbdc85c3ec06dac60a1746c3cafb8c49d635fa24b21308c28ccb86b242b38f40'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  app 'QLab.app'
end
