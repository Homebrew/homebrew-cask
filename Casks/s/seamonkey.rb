cask "seamonkey" do
  version "2.53.18.1"

  language "cs" do
    sha256 "b87fd2936f7cf8349cff6c28c99a0ed39d2bd847caca1b4e2ba3530daf75b909"
    "cs"
  end
  language "de" do
    sha256 "a596d90796785e3e65453abb14447289f7b180695ba5aad7b0bbf7793e15ad9a"
    "de"
  end
  language "el" do
    sha256 "540e2f18852bcc2172d3b3c0e44a60e81745558eadedcce2dd8e6bc5aaa3e777"
    "el"
  end
  language "en-GB" do
    sha256 "71c3a2c54568e9c5b0cd9ba35ac74ec408fd7a7997e3ea5fc7c2047d07c2b95a"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "92b5622eae95c7257cdf9ba4fc5764fd5ecabfc828193cc1aa2e165319db170d"
    "en-US"
  end
  language "es-AR" do
    sha256 "87b611be4def8383e40ae58f08d07cbb34341bc66616036b04ac7cf2d0766a8f"
    "es-AR"
  end
  language "es-ES" do
    sha256 "6fcbffd305785f177177ca072c0a5bcd9d4984f66d73e342adb0f21561511f40"
    "es-ES"
  end
  language "fi" do
    sha256 "5e26434e6845bf483209b4587b695c49252c60d29ec25be7a5c45fb4d1b64be1"
    "fi"
  end
  language "fr" do
    sha256 "a11f6c9d8bb94924cd5332c0a970f9f5fc5c6162ffca1f30701c6245f1bdc51c"
    "fr"
  end
  language "hu" do
    sha256 "4806da42600b2b26214d7d0b1b85a6edb04911ac0e5522ceb4975fcececaa76d"
    "hu"
  end
  language "it" do
    sha256 "11264b78bedc4047cd9516767aa5d98019ab075dc27db086985ec4b54f196ba8"
    "it"
  end
  language "ja" do
    sha256 "2702d7a58dbd8f10e06f31005af018b7b3512eddeb2cd5c83c23b33016c5ea6d"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "b4c0d8b2eeab064cb106bec11b0c8abd49d38486e2777c603f00b63decf23ef3"
    "ka"
  end
  language "nl" do
    sha256 "d656c6c9bcd0d83ce55896abb22df2734a135a10ab70e64e83fcc394fe73ebda"
    "nl"
  end
  language "no" do
    sha256 "6fd4305b2cba6e8e08d7422e66457b576b93b103f017c5914c401fa50029cb84"
    "nb-NO"
  end
  language "pl" do
    sha256 "1446487231480d7219ec94b036430059d33a0e755bb2e841a6a5f43a94a479d6"
    "pl"
  end
  language "pt-BR" do
    sha256 "3c68ddca16eefe976a207b4a48386ecdabdf00dba42e1872b04e4147d9daac1c"
    "pt-BR"
  end
  language "pt" do
    sha256 "c405ef14c6a23135477508000c4e3745b5fbfda3af08317c476833dd1ae42995"
    "pt-PT"
  end
  language "ru" do
    sha256 "af41c0b3c12fe14c1051a4c90b33947993f2bc7065315322468ab03168c616f2"
    "ru"
  end
  language "sk" do
    sha256 "79223e65ecf3210d29409c3ac3f825e324d2628ded3805b4d22b5922e882b84b"
    "sk"
  end
  language "sv" do
    sha256 "acd78762311a3742a9ba7c2e7ac487be4c730d00a2ae0eb780027eefcd260401"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "2665ad6baa38c346c506c72c69c2eec89f4fd8f3243d8208732efb17eea7dc17"
    "zh-TW"
  end
  language "zh" do
    sha256 "99166e5cc229a3880f4789a6e80926b2603adb3cd97992de241286313efc2f46"
    "zh-CN"
  end

  url "https://archive.seamonkey-project.org/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)+)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"

  zap trash: [
    "~/Library/Application Support/SeaMonkey",
    "~/Library/Caches/SeaMonkey",
    "~/Library/Preferences/org.mozilla.seamonkey.plist",
    "~/Library/Saved Application State/org.mozilla.seamonkey.savedState",
  ]
end
