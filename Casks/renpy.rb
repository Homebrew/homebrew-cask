cask 'renpy' do
  version '7.0.1'
  sha256 'f9abff24dbf5cc90a73cdf44dcf4ec2210661fbe7bf940f69a65bf9644021ad0'

  url "https://www.renpy.org/dl/#{version}/renpy-#{version}-sdk.zip"
  name 'Ren\'Py'
  homepage 'https://www.renpy.org/'

  suite "renpy-#{version}-sdk"
end
