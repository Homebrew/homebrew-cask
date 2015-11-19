cask :v1 => 'inboard' do
  version '1.0.5-277'
  sha256 'ee9ffe0abbb9730cbf63f90be1ebb335a1cc0a90e2c5c527fb0542f5a1c8d296'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  name 'Inboard'
  appcast 'http://inboardapp.com/appcast.xml',
          :sha256 => 'e0481d21c66c6b33513f8b4d8916a6f8c08a105fbfc50a0e6040644f3868a00a'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
