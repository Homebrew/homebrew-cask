cask 'scansnap-manager' do
  version 'V63L50'
  sha256 '0387e46ce3479317b4810ed7ab402ea9f819b99a90af96a6ed63383f63634f6f'

  # Needs comment from project team member as verified...
  url "http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-ix500/MaciX500Manager#{version}WW1.dmg"
  name 'ScanSnap'
  homepage "http://scansnap.fujitsu.com/global/dl/setup/m-ix500-mgr-#{version.downcase}.html"

  pkg 'ScanSnap Manager.pkg',
      # These choices don't automate the install, but that's what I was trying to accomplish...
      choices: [
                 {
                   'choiceIdentifier' => 'choice711',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => '__ROOT_CHOICE_IDENT_ScanSnap Manager',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: "jp.co.pfu.ScanSnap#{version}WW",
            quit:    ['jp.co.pfu.SSCheckScanMessage', 'jp.co.pfu.SSDeviceMessage', 'jp.co.pfu.ScanSnap.V10L10']
end
