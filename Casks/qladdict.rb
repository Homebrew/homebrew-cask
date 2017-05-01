cask 'qladdict' do
  version '1.2'
  sha256 '0ccb7faf35ef8aed5a4caf041cb88f5f12c5f5e97de3b16ef3055373dd01106d'

  url "https://github.com/tattali/QLAddict/releases/download/#{version}/QLAddict.qlgenerator.#{version}.zip"
  appcast 'https://github.com/tattali/QLAddict/releases.atom',
          checkpoint: 'f14a28482dd7ca3766fde73e2a3ced8e6fe3f8e95aba7f2ad74806fcd2220862'
  name 'QLAddict'
  homepage 'https://github.com/tattali/QLAddict/'

  qlplugin 'QLAddict.qlgenerator'
end
