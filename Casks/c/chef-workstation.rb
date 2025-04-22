cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"

  version "25.2.1075,12"
  sha256 arm:   "9b6312d5efa3d35f4472efd7687ae1d4954971c4450c2f5e911752fa540d439d",
         intel: "e578d0a08c7e2bf40847091e8e4328c6657ad3cd2a517051cb82d3ef7c8d25d3"

  url "https://packages.chef.io/files/stable/chef-workstation/#{version.csv.first}/mac_os_x/#{version.csv.second}/chef-workstation-#{version.csv.first}-1.#{arch}.dmg"
  name "Chef Workstation"
  desc "All-in-one installer for the tools you need to manage your Chef infrastructure"
  homepage "https://docs.chef.io/workstation/"

  livecheck do
    url "https://omnitruck.chef.io/stable/chef-workstation/metadata?p=mac_os_x&pv=99&m=#{arch}&v=latest"
    regex(%r{/chef-workstation/v?(\d+(?:\.\d+)+)/mac_os_x/(\d+(?:\.\d+)*)/}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "chef-workstation-#{version.csv.first}-1.#{arch}.pkg"

  uninstall launchctl: [
              "io.chef.chef-workstation",
              "io.chef.chef-workstation.app",
            ],
            quit:      "sh.chef.chef-workstation",
            script:    {
              executable: "/opt/chef-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            },
            pkgutil:   "com.getchef.pkg.chef-workstation"

  zap trash: "~/.chef-workstation/"
end
