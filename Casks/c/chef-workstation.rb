cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "25.5.1084,14"
    sha256 "8c9e575ae299e9c58f684805a6d867f2522bec137c37eb10e3c1da3ab6515804"
  end
  on_intel do
    version "25.5.1084,12"
    sha256 "d3d76729a52df189d9f0975afdf21b70736d90bb04c97917b5bca2ecae9b0fef"
  end

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

  depends_on macos: ">= :monterey"

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
