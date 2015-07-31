cask :v1 => 'firetask' do
  version '3.7.2'
  sha256 'c511577124e016c9333d67a0de1b7babc92e301ec98fce643f5f90ea63bee95f'

  url "http://downloads.firetask.com/firetask-mac/Firetask-Mac-#{version}.zip"
  appcast 'http://www.firetask.com/firetask-mac/updates/firetask-mac.xml',
          :sha256 => '5002e88441b705c45f026b9855a35d4d9799daa90ac445545fa3fd256635c0db'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :commercial

  app "Firetask-Mac-#{version}/Firetask.app"
end
