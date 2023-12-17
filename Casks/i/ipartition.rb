cask "ipartition" do
  on_el_capitan :or_older do
    version "3.5.1"
    sha256 "c3400af48b24ea2f30d6d1f829c761a0542cc04ecbe87755223d95418ddeb40a"
  end
  on_sierra :or_newer do
    version "3.6.2"
    sha256 "46e17302cd7153d6b4c6ef46ba84fa8ee1112b65789a4d244b78b7e6d8c2f6c2"
  end

  url "https://coriolis-systems.com/downloads/iPartition-#{version}.dmg"
  name "iPartition"
  desc "Disk partitioning tool"
  homepage "https://coriolis-systems.com/iPartition/"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: "<= :high_sierra"

  app "iPartition.app"

  zap trash: "~/Library/Preferences/com.coriolis-systems.iPartition.plist"

  caveats do
    free_license "https://coriolis-systems.com/downloads/iPartition.png"
  end
end
