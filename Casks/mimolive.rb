cask 'mimolive' do
  version '4.0.2-24870'
  sha256 'fb49c0e865de6cd464b473f9d5336dd7c1758590c6e1b818cc5eb8ac4c715b26'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive',
          checkpoint: '903024a74400787d045155c7bcdb7089b46bcc2788eb90641bf2eaff849dc6e4'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
