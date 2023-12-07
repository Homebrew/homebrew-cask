cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.6"
  sha256 arm:   "b0ca70d6bd36e013a68faeaca3189ccb5f209b185ff47698e3cd1307c297697f",
         intel: "42734c0d6380eee010e3cc07d88d50a758ed828990f2be6b5c728862484e30ba"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
